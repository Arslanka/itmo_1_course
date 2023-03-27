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
vector<vector<int>> tree;
void dfs(int x) {
    used[x] = true;
    for (auto v: g[x]) {
        if (used[v]) continue;
        tree[x].push_back(v);
        dfs(v);
    }
}

bool isConnected(){
    dfs(0);
    bool ok = true;
    for (auto i: used){
        ok &= i;
    }
    return ok;
}
void solve() {
    int n, m;
    cin >> n >> m;
    g.resize(n), used.resize(n, false), tree.resize(n);
    for (int i = 0; i < m; ++i) {
        int x, y;
        cin >> x >> y;
        --x, --y;
        g[x].push_back(y);
        g[y].push_back(x);
    }
    if (!isConnected()){
        cout << "The graph is not connected";
        return;
    }
    for (int i = 0; i < n; ++i){
        if (tree[i].empty()) continue;
        cout << i + 1 << ": ";
        for (auto j: tree[i]){
            cout << j + 1 << ' ';
        }
        cout << '\n';
    }

}

signed main() {
    int t = 1;
    //cin >> t;
    while (t--) {
        solve();
    }
}
