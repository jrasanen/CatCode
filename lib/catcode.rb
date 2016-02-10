class CatCode
  def initialize(list_of_words=nil)
    if list_of_words.nil?
      list_of_words = File.read(File.expand_path('../nouns.txt', __FILE__)).split("\n")
    end
    list_of_words.reject!(&:empty?)
    @words = list_of_words
  end
  def generate(len=5)
    len.times.map { @words.sample }.join("-")
  end
end
