#include <algorithm>
#include <numeric>
#include <set>
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <cmath>
#include <sstream>
#include <vector>
#include <set>
#include <map>
#include <stack>
#include <unordered_set>
#include <unordered_map>
#include <queue>
#include <ctime>
#include <cassert>
#include <complex>
#include <string>
#include <cstring>
#include <chrono>
#include <random>
#include <bitset>
#include <map>
#include <iomanip>

// @author: Arslanka
#define int long long

using namespace std;


vector<vector<int>> g;
vector<bool> used;

void dfs(int x) {
    used[x] = true;
    for (auto v: g[x]) {
        if (used[v]) continue;
        dfs(v);
    }
}

bool everyDegIsEven(){
    bool ok = true;
    for (auto &i: g){
        ok &= (i.size() % 2 == 0);
    }
    return ok;
}
void isEulerGraph(int x) {
    dfs(x);
    bool ok = true;
    for (auto i: used){
        ok &= i;
    }
    cout << ((ok && everyDegIsEven()) ? "Yes\n" : "No\n");
}

void solve() {
    int n, m;
    cin >> n >> m;
    g.resize(n), used.resize(n);
    for (int i = 0; i < m; ++i) {
        int x, y;
        cin >> x >> y;
        --x, --y;
        g[x].push_back(y);
        g[y].push_back(x);
    }
    isEulerGraph(0);
}

signed main() {
    int t = 1;
    //cin >> t;
    while (t--) {
        solve();
    }
}
