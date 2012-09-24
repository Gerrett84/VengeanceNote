.class public Lcom/android/settings/wifi/M;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private JA:Landroid/widget/EditText;

.field private Jy:Landroid/widget/TextView;

.field private Jz:I

.field private mView:Landroid/view/View;

.field private final se:Landroid/content/DialogInterface$OnClickListener;

.field zq:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f0f001d

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/M;->Jz:I

    .line 66
    iput-object p2, p0, Lcom/android/settings/wifi/M;->se:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iput-object p3, p0, Lcom/android/settings/wifi/M;->zq:Landroid/net/wifi/WifiConfiguration;

    .line 68
    if-eqz p3, :cond_0

    .line 69
    invoke-static {p3}, Lcom/android/settings/wifi/M;->d(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/M;->Jz:I

    .line 71
    :cond_0
    return-void
.end method

.method public static d(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 74
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kB()V
    .locals 2

    .prologue
    const v1, 0x7f0801b4

    .line 199
    iget v0, p0, Lcom/android/settings/wifi/M;->Jz:I

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/M;->Jy:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/M;->Jy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/M;->Jz:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/M;->Jz:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 164
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/M;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/M;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/M;->validate()V

    .line 185
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    return-void
.end method

.method public ds()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/android/settings/wifi/M;->Jy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/android/settings/wifi/M;->Jz:I

    packed-switch v1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 101
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 110
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    return-void

    .line 171
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/M;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/M;->setView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/M;->setInverseBackgroundForced(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/M;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 131
    const v1, 0x7f0b0238

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/M;->setTitle(I)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    const v3, 0x7f08018b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    const v3, 0x7f0801b2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/M;->Jy:Landroid/widget/TextView;

    .line 134
    iget-object v1, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    const v3, 0x7f08019f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    .line 136
    const/4 v1, -0x1

    const v3, 0x7f0b020f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/M;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/wifi/M;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    const/4 v1, -0x2

    const v3, 0x7f0b0211

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/M;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/M;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/wifi/M;->zq:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/settings/wifi/M;->Jy:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/M;->zq:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v1, p0, Lcom/android/settings/wifi/M;->Jz:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 143
    iget v1, p0, Lcom/android/settings/wifi/M;->Jz:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/M;->Jz:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/M;->zq:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/M;->Jy:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/M;->JA:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/wifi/M;->mView:Landroid/view/View;

    const v2, 0x7f0801b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/M;->kB()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/M;->validate()V

    .line 158
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iput p3, p0, Lcom/android/settings/wifi/M;->Jz:I

    .line 190
    invoke-direct {p0}, Lcom/android/settings/wifi/M;->kB()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/wifi/M;->validate()V

    .line 192
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    return-void
.end method
