require 'caesar_cipher'

describe 'Caesar Cipher' do
    describe 'all letters' do
        context 'positive shift of 2' do
            it 'shifts characters forward by 2' do
                expect(caesar_cipher('abcde', 2)).to eq('cdefg')
            end
        end

        context 'negative shift of 2' do
            it 'shifts characters back by 2' do 
                expect(caesar_cipher('abcde', -2)).to eq('yzabc')
            end
        end

        context 'positive shift of 27' do
            it 'shifts characters forward by 1' do
                expect(caesar_cipher('vwxyz', 27)).to eq('wxyza')
            end
        end

        context 'negative shift of 27' do
            it 'shifts characters back by 1' do
                expect(caesar_cipher('abcde', -27)).to eq('zabcd')
            end
        end
    end

    describe 'letters and numbers' do
        context 'positive shift of 2' do
            it 'shifts letters forward by 2' do
                expect(caesar_cipher('hd6&3', 2)).to eq('jf6&3')
            end
        end

        context 'negative shift of 2' do
            it 'shifts letters back by 2' do 
                expect(caesar_cipher('opd76', -2)).to eq('mnb76')
            end
        end

        context 'positive shift of 27' do
            it 'shifts letters forward by 1' do
                expect(caesar_cipher('oerw$', 27)).to eq('pfsx$')
            end
        end

        context 'negative shift of 27' do
            it 'shifts letters back by 1' do
                expect(caesar_cipher('loljk63', -27)).to eq('knkij63')
            end
        end
    end
end