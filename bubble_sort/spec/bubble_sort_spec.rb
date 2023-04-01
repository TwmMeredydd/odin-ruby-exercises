require 'bubble_sort'

describe "Bubble Sort" do
    context 'bubble sorts given array' do
        it '[598, -250, -148, 591, -898]' do
            expect(bubble_sort([598, -250, -148, 591, -898])).to eq([-898, -250, -148, 591, 598])
        end
        
        it '[-308, -445, 282, 315, -303]' do
            expect(bubble_sort([-308, -445, 282, 315, -303])).to eq([-445, -308, -303, 282, 315])
        end
    end
end
