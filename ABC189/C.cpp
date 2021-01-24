/*
N = int(input())
l = list(map(int, input().split()))

ans = 0
for i in range(1, N+1):
    for j in range(i, N+1):
        num = min(l[i-1:j])
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
  int num = 0;
  for (int i=1; i < N+1; i++){
    for (int j=i; j < N+1; j++){
      auto minmax = std::minmax_element(vec.begin()+i-1, vec.begin()+j);
      num = *minmax.first;
      if ( ans < (j-i+1)*num ){
        ans = (j-i+1)*num;
      }
    }
  }
  cout << ans << endl;
}
