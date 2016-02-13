package projet

class Utilisateur {
	String nom;
	String mdp;
	int droit;
	static hasMany = [emargement: Emargement]
    static constraints = {
    }
}
