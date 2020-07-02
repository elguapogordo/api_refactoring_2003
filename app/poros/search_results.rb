class SearchResults
  def members(state)
    json = PropublicaService.new.members(state)
    
    @members = json[:results].map do |member_data|
      Member.new(member_data)
    end
  end
end
