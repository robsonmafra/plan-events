package plan.events

class TekEvent {
    
	String city 
	String name 
	TekUser organizer 
	String venue 
	Date startDate 
	Date endDate
	String description    
	
	static hasMany = [volunteers:TekUser, 
					  respondents:String,
					  sponsorships:Sponsorship,
					  tasks:Task,
					  messages:Message]
	
	String toString(){
		"$name, $city"
	}

    static constraints = {
		description(maxSize: 5000)
		volunteers(nullable: true) 
		sponsorships(nullable: true) 
		tasks(nullable: true) 
		messages(nullable: true)
    }
}
