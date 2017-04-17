//Given a time in -hour AM/PM format, convert it to military (24-hour) time.
// Input - 07:05:45PM
// Output - 19:05:45

func convertTime(dateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let myDate = dateFormatter.date(from: dateString)
    
    let dateFormatter1 = DateFormatter()
    dateFormatter1.dateFormat = "HH:mm:ss"
    return dateFormatter1.string(for:myDate)!
}

