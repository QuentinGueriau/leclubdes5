package projet



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EnseignementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Enseignement.list(params), model:[enseignementInstanceCount: Enseignement.count()]
    }

    def show(Enseignement enseignementInstance) {
        respond enseignementInstance
    }

    def create() {
        respond new Enseignement(params)
    }

    @Transactional
    def save(Enseignement enseignementInstance) {
        if (enseignementInstance == null) {
            notFound()
            return
        }

        if (enseignementInstance.hasErrors()) {
            respond enseignementInstance.errors, view:'create'
            return
        }

        enseignementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'enseignement.label', default: 'Enseignement'), enseignementInstance.id])
                redirect enseignementInstance
            }
            '*' { respond enseignementInstance, [status: CREATED] }
        }
    }

    def edit(Enseignement enseignementInstance) {
        respond enseignementInstance
    }

    @Transactional
    def update(Enseignement enseignementInstance) {
        if (enseignementInstance == null) {
            notFound()
            return
        }

        if (enseignementInstance.hasErrors()) {
            respond enseignementInstance.errors, view:'edit'
            return
        }

        enseignementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Enseignement.label', default: 'Enseignement'), enseignementInstance.id])
                redirect enseignementInstance
            }
            '*'{ respond enseignementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Enseignement enseignementInstance) {

        if (enseignementInstance == null) {
            notFound()
            return
        }

        enseignementInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Enseignement.label', default: 'Enseignement'), enseignementInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'enseignement.label', default: 'Enseignement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
