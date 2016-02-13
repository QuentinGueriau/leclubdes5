package projet



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmargementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Emargement.list(params), model:[emargementInstanceCount: Emargement.count()]
    }

    def show(Emargement emargementInstance) {
        respond emargementInstance
    }

    def create() {
        respond new Emargement(params)
    }

    @Transactional
    def save(Emargement emargementInstance) {
        if (emargementInstance == null) {
            notFound()
            return
        }

        if (emargementInstance.hasErrors()) {
            respond emargementInstance.errors, view:'create'
            return
        }

        emargementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emargement.label', default: 'Emargement'), emargementInstance.id])
                redirect emargementInstance
            }
            '*' { respond emargementInstance, [status: CREATED] }
        }
    }

    def edit(Emargement emargementInstance) {
        respond emargementInstance
    }

    @Transactional
    def update(Emargement emargementInstance) {
        if (emargementInstance == null) {
            notFound()
            return
        }

        if (emargementInstance.hasErrors()) {
            respond emargementInstance.errors, view:'edit'
            return
        }

        emargementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Emargement.label', default: 'Emargement'), emargementInstance.id])
                redirect emargementInstance
            }
            '*'{ respond emargementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Emargement emargementInstance) {

        if (emargementInstance == null) {
            notFound()
            return
        }

        emargementInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Emargement.label', default: 'Emargement'), emargementInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emargement.label', default: 'Emargement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
