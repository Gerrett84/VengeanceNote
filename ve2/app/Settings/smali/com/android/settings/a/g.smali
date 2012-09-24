.class public Lcom/android/settings/a/g;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private It:Ljava/util/ArrayList;

.field private fH:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings/a/g;->fH:Landroid/net/INetworkPolicyManager;

    .line 58
    return-void
.end method

.method private static d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 9
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 144
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 145
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 146
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 148
    new-instance v0, Landroid/net/NetworkPolicy;

    move-object v1, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    return-object v0
.end method

.method private f(Ljava/lang/String;Z)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->ai(Ljava/lang/String;)Z

    move-result v0

    .line 235
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v9

    .line 236
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v10

    .line 237
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 239
    if-ne p2, v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    .line 243
    :cond_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 245
    invoke-virtual {p0, v9}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v10}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v3

    if-gez v3, :cond_1

    move-object v5, v0

    .line 250
    :goto_1
    iget-object v3, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v9, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    new-instance v0, Landroid/net/NetworkPolicy;

    iget v2, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    iget-wide v3, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v5, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 248
    goto :goto_1

    .line 257
    :cond_2
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v11

    .line 260
    iget-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v12, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    new-instance v0, Landroid/net/NetworkPolicy;

    iget v2, v11, Landroid/net/NetworkPolicy;->cycleDay:I

    iget-wide v3, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v5, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    move-object v1, v9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v9, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    new-instance v0, Landroid/net/NetworkPolicy;

    iget v2, v11, Landroid/net/NetworkPolicy;->cycleDay:I

    iget-wide v3, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v5, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    move-object v1, v10

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iV()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 190
    iget-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 191
    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-direct {p0, v0, v2}, Lcom/android/settings/a/g;->f(Ljava/lang/String;Z)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 198
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/net/NetworkTemplate;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 158
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 159
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/a/g;->iU()V

    .line 161
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 169
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 170
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/a/g;->iU()V

    .line 172
    return-void
.end method

.method public a([Landroid/net/NetworkPolicy;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/a/g;->fH:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem writing policies"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/net/NetworkTemplate;)Z
    .locals 4
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 202
    .line 204
    iget-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 205
    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 206
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    .line 216
    goto :goto_0

    :pswitch_0
    move v0, v1

    move v1, v4

    .line 210
    goto :goto_1

    :pswitch_1
    move v0, v4

    move v1, v3

    .line 212
    goto :goto_1

    .line 217
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v4

    :cond_2
    move v4, v2

    goto :goto_2

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    invoke-static {p1}, Lcom/android/settings/a/g;->d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-object v0
.end method

.method public b(Landroid/net/NetworkTemplate;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 180
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 181
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/a/g;->iU()V

    .line 183
    return-void
.end method

.method public c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 135
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/net/NetworkTemplate;)I
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    return v0
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/settings/a/g;->f(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/a/g;->iU()V

    .line 224
    :cond_0
    return-void
.end method

.method public f(Landroid/net/NetworkTemplate;)J
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    return-wide v0
.end method

.method public g(Landroid/net/NetworkTemplate;)J
    .locals 2
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide v0
.end method

.method public iU()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 102
    new-instance v1, Lcom/android/settings/a/a;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/a/a;-><init>(Lcom/android/settings/a/g;[Landroid/net/NetworkPolicy;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method

.method public read()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v8, -0x1

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/a/g;->fH:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 69
    iget-object v2, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 72
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 73
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    move v0, v1

    .line 76
    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 77
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    move v0, v1

    .line 82
    :cond_1
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    move v0, v1

    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading policies"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/android/settings/a/g;->It:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/a/g;->iV()Z

    move-result v1

    or-int/2addr v0, v1

    .line 96
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/a/g;->iU()V

    .line 97
    :cond_4
    return-void
.end method
