package projet

class Emargement {
	static belongsTo = [enseignement: Enseignement, utilisateur: Utilisateur];
	boolean aRepondu;
    static constraints = {
    }
}
