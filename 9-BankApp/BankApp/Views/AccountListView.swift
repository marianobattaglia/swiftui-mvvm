//
//  AccountListView.swift
//  BankApp
//
//  Created by Mariano Martin Battaglia on 22/09/2023.
//

import SwiftUI

struct AccountListView: View {
    
    let accounts: [AccountViewModel]
    
    var body: some View {
        List(accounts, id: \.accountId) { account in
            AccountCell(account: account)
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        
        let account = Account(id: UUID(), name: "John Doe", accountType: .checking, balance: 200)
        let accountVM = AccountViewModel(account: account)
        
        return AccountListView(accounts: [accountVM])
    }
}

struct AccountCell: View {
    let account: AccountViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(account.name)
                    .font(.headline)
                
                Text(account.accountType)
                    .opacity(0.5)
            }
            
            Spacer()
            
            Text("\(account.balance.formatAsCurrency())")
                .foregroundColor(Color.green)
        }
    }
}
