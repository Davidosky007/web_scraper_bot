require_relative '../lib/web_scraper'

<<<<<<< HEAD
describe WeekendTips do
  test_scraper = WeekendTips.new
=======
describe Weekend_tips do
  test_scraper = Weekend_tips.new
>>>>>>> 2f6ac45...  adds readme file and test file for the project
  wrong = 26
  right = 6

  describe '#input_check' do
    it 'returns false for input not within the range of 1 to 25' do
      expect(test_scraper.input_check(wrong)).to eql(false)
    end

    it 'returns true for input within the range of 1 to 25' do
      expect(test_scraper.input_check(right)).to eql(true)
    end
  end

  describe '#tip_detail' do
    it 'returns the soccer predition details' do
      expect(test_scraper.tip_detail(right)).to be_a(String)
    end
  end
end
