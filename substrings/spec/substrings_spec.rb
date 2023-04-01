require 'substrings'

describe "Substring finder" do
    context "counts occurences of substrings in string" do 
        it "counts 'ad' 3 times in 'abadfhdhwkadkkeoadj'" do
            expect(find_substrings('abadfhdhwkadkkeoadj', ['ad'])).to eq({"ad" => 3})
        end
    end
end