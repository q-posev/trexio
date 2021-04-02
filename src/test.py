import pytrexio as tr

txt = tr.trexio_open('trexio_test_py','w',1)

num = 2
rc = tr.trexio_write_nucleus_num(txt, num)
assert rc==0

charges = tr.doubleArray(2)
for i in range(2):
    charges[i] = 6.

rc = tr.trexio_write_nucleus_charge(txt, charges)
assert rc==0

rc = tr.trexio_close(txt)
assert rc==0

txt2 = tr.trexio_open('trexio_test_py','r',1)

num2 = -1
#rc = tr.trexio_read_nucleus_num(txt2, num2)
#assert rc==0
#assert num2==num

charges2 = tr.doubleArray(2)
for i in range(2):
    charges2[i] = -1.

rc = tr.trexio_read_nucleus_charge(txt2, charges2)
assert rc==0
for i in range(2):
    assert charges2[i]==charges[i]

rc = tr.trexio_close(txt2)
assert rc==0

h5 = tr.trexio_open('test_py.h5','w',0)

rc = tr.trexio_write_nucleus_num(h5, num)
assert rc==0

rc = tr.trexio_write_nucleus_charge(h5, charges)
assert rc==0

rc = tr.trexio_close(h5)
assert rc==0

