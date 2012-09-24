.class public Lcom/android/settings/a/i;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private Mr:Ljava/util/ArrayList;

.field private gC:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    .line 58
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings/a/i;->gC:Landroid/net/NetworkPolicyManager;

    .line 59
    return-void
.end method

.method private static c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const-wide/16 v4, -0x1

    .line 135
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v2, -0x1

    .line 137
    const-string v3, "UTC"

    .line 138
    const/4 v12, 0x0

    .line 147
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 141
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 142
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 143
    iget-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move v12, v13

    .line 144
    goto :goto_0
.end method

.method private f(Ljava/lang/String;Z)Z
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/a/i;->an(Ljava/lang/String;)Z

    move-result v2

    .line 280
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v16

    .line 281
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v17

    .line 282
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 284
    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 286
    const/4 v2, 0x0

    .line 314
    :goto_0
    return v2

    .line 288
    :cond_0
    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v4

    .line 293
    invoke-virtual {v2, v4}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v5

    if-gez v5, :cond_1

    move-object v15, v2

    .line 295
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    iget v4, v15, Landroid/net/NetworkPolicy;->cycleDay:I

    iget-object v5, v15, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    iget-wide v6, v15, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v8, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    iget-boolean v14, v15, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v15, v15, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object v15, v4

    .line 293
    goto :goto_1

    .line 302
    :cond_2
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    .line 304
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v18

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v18

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move-object/from16 v3, v16

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v18

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v18

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 314
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private lv()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 232
    iget-object v0, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 233
    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
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

    .line 238
    invoke-direct {p0, v0, v2}, Lcom/android/settings/a/i;->f(Ljava/lang/String;Z)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 240
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    invoke-static {p1}, Lcom/android/settings/a/i;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-object v0
.end method

.method public a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 157
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 158
    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 160
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/a/i;->lu()V

    .line 162
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 170
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 172
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/a/i;->lu()V

    .line 174
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 201
    if-eqz p2, :cond_2

    .line 202
    if-nez v2, :cond_1

    .line 203
    invoke-static {p1}, Lcom/android/settings/a/i;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 204
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 205
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->inferred:Z

    .line 206
    iget-object v1, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/a/i;->lu()V

    .line 225
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v3, :cond_4

    .line 209
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 210
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->inferred:Z

    goto :goto_0

    .line 215
    :cond_2
    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 217
    :cond_3
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v3, :cond_4

    .line 218
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 219
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->inferred:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public a([Landroid/net/NetworkPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/a/i;->gC:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 103
    return-void
.end method

.method public an(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 245
    .line 247
    iget-object v0, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

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

    .line 248
    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 249
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    .line 259
    goto :goto_0

    :pswitch_0
    move v0, v1

    move v1, v4

    .line 253
    goto :goto_1

    :pswitch_1
    move v0, v4

    move v1, v3

    .line 255
    goto :goto_1

    .line 260
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v4

    :cond_2
    move v4, v2

    goto :goto_2

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 121
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 182
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 184
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/a/i;->lu()V

    .line 186
    return-void
.end method

.method public d(Landroid/net/NetworkTemplate;)I
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    return v0
.end method

.method public e(Landroid/net/NetworkTemplate;)J
    .locals 2
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/settings/a/i;->f(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/a/i;->lu()V

    .line 268
    :cond_0
    return-void
.end method

.method public f(Landroid/net/NetworkTemplate;)J
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide v0
.end method

.method public lu()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 92
    new-instance v1, Lcom/android/settings/a/a;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/a/a;-><init>(Lcom/android/settings/a/i;[Landroid/net/NetworkPolicy;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method

.method public read()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, -0x1

    .line 62
    iget-object v2, p0, Lcom/android/settings/a/i;->gC:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 65
    iget-object v2, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 68
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 69
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    move v0, v1

    .line 72
    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 73
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    move v0, v1

    .line 77
    :cond_1
    iget-object v6, p0, Lcom/android/settings/a/i;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/a/i;->lv()Z

    move-result v1

    or-int/2addr v0, v1

    .line 86
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/a/i;->lu()V

    .line 87
    :cond_3
    return-void
.end method
