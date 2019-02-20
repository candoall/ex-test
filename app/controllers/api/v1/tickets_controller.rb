module Api
  module V1
    class TicketsController < Api::ApiController
      def create
        if ticket.save!
          create_excavator(ticket)
          render json: ticket
        else
          render json: ticket.errors, status: :unprocessable_entity
        end
      end

      private

      def create_excavator(ticket)
        ticket.create_excavator(
          company_name: params[:ticket][:Excavator][:CompanyName],
          street: params[:ticket][:Excavator][:Address],
          city: params[:ticket][:Excavator][:City],
          state: params[:ticket][:Excavator][:State],
          zip: params[:ticket][:Excavator][:Zip]
        )
      end

      def ticket
        @ticket ||= Ticket.new(
          request_number: params[:ticket][:RequestNumber],
          sequence_number: params[:ticket][:SequenceNumber],
          request_type: params[:ticket][:RequestType],
          response_due_date_time: params[:ticket][:DateTimes][:ResponseDueDateTime],
          primary_service_area_code: params[:ticket][:ServiceArea][:PrimaryServiceAreaCode][:SACode],
          additional_service_area_codes: params[:ticket][:ServiceArea][:AdditionalServiceAreaCodes][:SACode],
          digsite_info: params[:ticket][:ExcavationInfo][:DigsiteInfo][:WellKnownText]
        )
      end
    end
  end
end
