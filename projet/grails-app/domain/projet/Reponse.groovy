package projet

class Reponse {
	static belongsTo = [sondage: Sondage];
	int note;
    static constraints = {
    }
}
