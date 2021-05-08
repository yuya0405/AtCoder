/*
N = int(input())
l = list(map(int, input().split()))

ans = 0
for i in range(0, N):
  num = 10**5+1
  for j in range(i, N):
      num = min(num, l[j])
      if ans < (j-i+1)*num:
          ans = (j-i+1)*num
print(ans)
*/

#include <bits/stdc++.h>
using namespace std;

int main() {
  int N;
  cin >> N;

  vector<int> vec(N);
  for (int i = 0; i < N; i++) {
    cin >> vec.at(i);
  }

  int ans = 0;

  for (int i = 0; i < N; i++){
    int num = pow(10,5)+1;
    for (int j = i; j < N; j++){
      num = min(num, vec[j]);
      if ( ans < (j-i+1)*num ){
        ans = (j-i+1)*num;
      }
    }
  }
  cout << ans << endl;
}
