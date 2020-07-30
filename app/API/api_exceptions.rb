module ApiExceptions
  ItunesAPIError = Class.new(StandardError)
  BadRequestError = Class.new(ItunesAPIError)
  UnauthorizedError = Class.new(ItunesAPIError)
  ForbiddenError = Class.new(ItunesAPIError)
  ApiRequestsQuotaReachedError = Class.new(ItunesAPIError)
  NotFoundError = Class.new(ItunesAPIError)
  UnprocessableEntityError = Class.new(ItunesAPIError)
  ApiError = Class.new(ItunesAPIError)
end