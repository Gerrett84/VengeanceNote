.class final Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private DA:I

.field private final DB:Ljava/lang/Runnable;

.field private final Dw:Landroid/preference/Preference;

.field private final Dx:Landroid/content/SharedPreferences;

.field private Dy:Z

.field private Dz:I

.field private final Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final jb:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DB:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->jb:Landroid/os/Handler;

    .line 94
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 95
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    .line 96
    invoke-virtual {p3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dx:Landroid/content/SharedPreferences;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 98
    return-void
.end method

.method private ay(I)V
    .locals 6
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->az(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0059

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static az(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    div-int/lit8 v1, p0, 0x3c

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    mul-int/lit8 v1, v1, 0x3c

    sub-int v1, p0, v1

    .line 158
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 159
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->iH()V

    return-void
.end method

.method private getDiscoverableTimeout()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 194
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    if-eq v0, v1, :cond_0

    .line 195
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    .line 214
    :goto_0
    return v0

    .line 198
    :cond_0
    const-string v0, "debug.bt.discoverable_time"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 199
    if-gez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dx:Landroid/content/SharedPreferences;

    const-string v1, "bt_discoverable_timeout"

    const-string v2, "twomin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "never"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const/4 v0, 0x0

    .line 213
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    goto :goto_0

    .line 205
    :cond_2
    const-string v1, "onehour"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    const/16 v0, 0xe10

    goto :goto_1

    .line 207
    :cond_3
    const-string v1, "fivemin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    const/16 v0, 0x12c

    goto :goto_1

    .line 210
    :cond_4
    const/16 v0, 0x78

    goto :goto_1
.end method

.method private iG()V
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dz:I

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private iH()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 259
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    .line 260
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->n(Landroid/content/Context;)J

    move-result-wide v2

    .line 267
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->ay(I)V

    goto :goto_0

    .line 273
    :cond_1
    sub-long v0, v2, v0

    div-long/2addr v0, v5

    long-to-int v0, v0

    .line 274
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->ay(I)V

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->jb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DB:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->jb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DB:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setEnabled(Z)V
    .locals 7
    .parameter

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 134
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->a(Landroid/content/Context;J)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 137
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->iH()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->N(I)V

    goto :goto_0
.end method


# virtual methods
.method aA(I)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dz:I

    .line 237
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->aB(I)V

    .line 238
    return-void
.end method

.method aB(I)V
    .locals 1
    .parameter

    .prologue
    .line 241
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dy:Z

    .line 243
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->iH()V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dy:Z

    .line 246
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->iG()V

    goto :goto_0
.end method

.method iF()I
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 219
    sparse-switch v0, :sswitch_data_0

    .line 222
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 225
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 231
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dy:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dy:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dy:Z

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 125
    return v1

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->jb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DB:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dw:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->aB(I)V

    goto :goto_0
.end method

.method setDiscoverableTimeout(I)V
    .locals 3
    .parameter

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 170
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    .line 171
    const-string v0, "twomin"

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->Dx:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 191
    return-void

    .line 175
    :pswitch_0
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    .line 176
    const-string v0, "fivemin"

    goto :goto_0

    .line 180
    :pswitch_1
    const/16 v0, 0xe10

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    .line 181
    const-string v0, "onehour"

    goto :goto_0

    .line 185
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->DA:I

    .line 186
    const-string v0, "never"

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
