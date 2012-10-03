.class Lcom/android/settings/ak;
.super Ljava/lang/Object;
.source "VirusScanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bA:Lcom/android/settings/VirusScanService;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    .line 183
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->g(Lcom/android/settings/VirusScanService;)I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dM;

    .line 186
    sget-object v2, Lcom/android/settings/ScanState;->bH:Lcom/android/settings/ScanState;

    iput-object v2, v0, Lcom/android/settings/dM;->cU:Lcom/android/settings/ScanState;

    .line 187
    iget-object v2, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v2}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v2}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/settings/aj;->n(I)V

    .line 191
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/android/settings/dM;->LC:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 194
    iget-object v5, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v5, v4}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    .line 196
    cmp-long v5, v2, v7

    if-gez v5, :cond_1

    .line 198
    sub-long v2, v7, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_1
    :goto_1
    if-eqz v4, :cond_5

    .line 205
    sget-object v2, Lcom/android/settings/ScanState;->bI:Lcom/android/settings/ScanState;

    iput-object v2, v0, Lcom/android/settings/dM;->cU:Lcom/android/settings/ScanState;

    .line 213
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->m(Lcom/android/settings/VirusScanService;)I

    .line 215
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/android/settings/aj;->a(IZ)V

    .line 222
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->b(Lcom/android/settings/VirusScanService;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->g(Lcom/android/settings/VirusScanService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 229
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/aj;->ax()V

    .line 240
    :cond_4
    :goto_4
    return-void

    .line 199
    :catch_0
    move-exception v2

    .line 200
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v2}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v2}, Lcom/android/settings/VirusScanService;->d(Lcom/android/settings/VirusScanService;)I

    .line 210
    sget-object v2, Lcom/android/settings/ScanState;->bJ:Lcom/android/settings/ScanState;

    iput-object v2, v0, Lcom/android/settings/dM;->cU:Lcom/android/settings/ScanState;

    goto :goto_2

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->n(Lcom/android/settings/VirusScanService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    const-string v0, "%s(%d%%)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-virtual {v4}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b075a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v4}, Lcom/android/settings/VirusScanService;->g(Lcom/android/settings/VirusScanService;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v5}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v2, v0}, Lcom/android/settings/VirusScanAppActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/aj;->ay()V

    goto :goto_4

    .line 232
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->n(Lcom/android/settings/VirusScanService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 235
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    iget-object v1, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b075d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/VirusScanAppActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 237
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    iget-object v1, p0, Lcom/android/settings/ak;->bA:Lcom/android/settings/VirusScanService;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0764

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/VirusScanAppActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
