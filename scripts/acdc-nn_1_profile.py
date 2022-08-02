#!/bin/python

# profile('~/msa/1aky.msa')

aa = ['A', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L', 'M', 'N', 'P', 'Q', 'R' ,'S', 'T' ,'V', 'W', 'Y', '-']

def profile(file):
    
    with open(file, 'r') as f:
        msa = [i.strip() for i in f]
    amsa = [[k for k in i] for i in msa]
    
    length = len(msa[0])
    
    df = pd.DataFrame(amsa)
    ar = df.to_numpy()
    prof = np.zeros((length,21))
    
    for i, a in enumerate(aa):
        for j in range(length):
            freq = ''.join(ar[:,j]).count(a)/ar.shape[0]
            prof[j,i] = freq
            
    pos=pd.DataFrame(range(1,length+1), columns=['POS'])
    prof = pd.DataFrame(prof, columns=aa)
    
    pd.concat([pos, prof], axis=1).to_csv(file.replace('.msa','.profile'), sep='\t', index=False)
	