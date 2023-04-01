require 'substrings'

describe "Substring finder" do
    context "counts occurences of substrings in string" do 
        it "counts 'ad' 3 times in 'abadfhdhwkadkkeoadj'" do
            expect(find_substrings('abadfhdhwkadkkeoadj', ['ad'])).to eq({"ad" => 3})
        end

        it "correctly counts occurrences of 'and' and 'ed' regardless of capitals" do
            expect(find_substrings('And he huffEd aND he puffeD AnD he blew the house down', ['and', 'ed'])).to eq({'and' => 3, 'ed' => 2})
        end
    end
end