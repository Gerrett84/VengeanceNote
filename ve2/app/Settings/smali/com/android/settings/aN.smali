.class Lcom/android/settings/aN;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic ez:Lcom/android/settings/ay;

.field private ql:Lcom/android/settings/M;


# direct methods
.method public constructor <init>(Lcom/android/settings/ay;Lcom/android/settings/M;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/aN;->ez:Lcom/android/settings/ay;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/android/settings/aN;->ql:Lcom/android/settings/M;

    .line 279
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    packed-switch p2, :pswitch_data_0

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/aN;->ql:Lcom/android/settings/M;

    invoke-virtual {v0}, Lcom/android/settings/M;->finish()V

    .line 292
    return-void

    .line 283
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
