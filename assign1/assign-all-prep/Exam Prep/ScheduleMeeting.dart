void main(){
  scheduleMeeting(date: "2024-09-25", attendees: ['Nat', 'Trevor', 'Kam', 'Emma'], duration: 10, location: 'Montreal');
  scheduleMeeting(date: "2024-09-25", attendees: ['Nat', 'Trevor', 'Kam', 'Emma'], location: 'Montreal');
  scheduleMeeting(date: "2024-09-25", attendees: ['Nat', 'Trevor', 'Kam', 'Emma']);
  scheduleMeeting(date: "2024-09-25", duration: 10);
  scheduleMeeting(date: "2024-09-25");
}

void scheduleMeeting({required String date, String? location, int? duration, List<String>? attendees}){
 print("Date: $date");
 if(location!=null) print("Location: $location");
 if(duration!=null) print("Duration: $duration min");
 if(attendees!=null) print("Attendees: $attendees");
}