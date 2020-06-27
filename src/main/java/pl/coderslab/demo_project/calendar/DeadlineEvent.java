package pl.coderslab.demo_project.calendar;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.CalendarScopes;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.EventDateTime;
import pl.coderslab.demo_project.entity.Clinic;
import pl.coderslab.demo_project.entity.Deadline;
import pl.coderslab.demo_project.entity.Patient;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.TimeZone;

public class DeadlineEvent {

    private static final String APPLICATION_NAME = "Spring Boot Application";
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
    private static final String TOKENS_DIRECTORY_PATH = "tokens";

    private static final List<String> SCOPES = Collections.singletonList(CalendarScopes.CALENDAR);
    private static final String CREDENTIALS_FILE_PATH = "/credentials.json";
    private static final String CALENDAR_ID = "2833g92oir4comor9mu4afbcqo@group.calendar.google.com";

    private static Credential getCredentials(final NetHttpTransport HTTP_TRANSPORT) throws IOException {
        InputStream in = CalendarQuickstart.class.getResourceAsStream(CREDENTIALS_FILE_PATH);
        if (in == null) {
            throw new FileNotFoundException("Resource not found: " + CREDENTIALS_FILE_PATH);
        }
        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
                .setDataStoreFactory(new FileDataStoreFactory(new java.io.File(TOKENS_DIRECTORY_PATH)))
                .setAccessType("offline")
                .build();
        LocalServerReceiver receiver = new LocalServerReceiver.Builder().setPort(8888).build();
        return new AuthorizationCodeInstalledApp(flow, receiver).authorize("user");
    }

    private static Calendar getService() throws IOException, GeneralSecurityException {
        final NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
        return new Calendar.Builder(HTTP_TRANSPORT, JSON_FACTORY, getCredentials(HTTP_TRANSPORT))
                .setApplicationName(APPLICATION_NAME)
                .build();
    }

    public void addEvent(Deadline deadline) throws IOException, GeneralSecurityException {
        Calendar service = getService();

        Patient patient = deadline.getPatient();
        Clinic clinic = patient.getClinic();

        Event event = new Event()
                .setSummary(patient.getPatientNumber() + " " + patient.getFullName())
                .setLocation("clinic.getShortName()")
                .setDescription(patient.getDescription() + "\n" + deadline.getWorkStage() + "\n" + deadline.getAdditionalInfo());

        DateTime startDateTime = getStartFromDeadline(deadline);
        EventDateTime start = new EventDateTime()
                .setDateTime(startDateTime);
        event.setStart(start);

        DateTime endDateTime = getEndFromDeadline(deadline);
        EventDateTime end = new EventDateTime()
                .setDateTime(endDateTime);
        event.setEnd(end);

        event = service.events().insert(CALENDAR_ID, event).execute();
        deadline.setEventId(event.getId());

    }

    private DateTime getStartFromDeadline(Deadline deadline){
        LocalDateTime dateTime = getLocalDateTimeFromDeadline(deadline);
        return new DateTime(dateTime.toString() + ":00" + getOffset());
    }

    private DateTime getEndFromDeadline(Deadline deadline){
        LocalDateTime dateTime = getLocalDateTimeFromDeadline(deadline);
        dateTime = dateTime.plusHours(2);
        return new DateTime(dateTime.toString() + ":00" + getOffset());
    }

    private LocalDateTime getLocalDateTimeFromDeadline(Deadline deadline){
        LocalDate dueDate = deadline.getDueDate();
        LocalTime dueTime;
        if(deadline.getDueTime() == null){
            dueTime = LocalTime.of(8,0);
        } else {
            dueTime = deadline.getDueTime();
        }
        return LocalDateTime.of(dueDate, dueTime);
    }

    private String getOffset(){
        TimeZone tz = TimeZone.getDefault();
        java.util.Calendar cal = GregorianCalendar.getInstance(tz);
        int offsetInMillis = tz.getOffset(cal.getTimeInMillis());

        String offset = String.format("%02d:%02d", Math.abs(offsetInMillis / 3600000), Math.abs((offsetInMillis / 60000) % 60));
        offset = (offsetInMillis >= 0 ? "+" : "-") + offset;

        return offset;
    }

}
