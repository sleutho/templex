
function psd5(x,y,b,o)
{
if ( b==o)
  echo("Overlap must be less than block size!")
  exit
endif
L=numpts(x)
N=int( (L-o+1)/(b-o))
E=(N*b-1)-(N-1)*o

first_block=y[0:(b-1):1]
sum_psd1=psd(x[0:(b-1):1], hanning(first_block))
for( ii=2; ii<=N; ii++)
    start_ii=(ii-1)*(b-o)
    end_ii=(ii*b-1)-(ii-1)*o
    block_ii=y[start_ii:end_ii:1]
    sum_psd1=sum_psd1+ psd(x[0:(b-1):1], hanning(block_ii))
endloop

return fold(sum_psd1)/N
}
