.class Lcom/android/settings/bb;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic fv:Lcom/android/settings/aP;

.field private st:Lcom/android/settings/aa;


# direct methods
.method public constructor <init>(Lcom/android/settings/aP;Lcom/android/settings/aa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/bb;->fv:Lcom/android/settings/aP;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/android/settings/bb;->st:Lcom/android/settings/aa;

    .line 284
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    packed-switch p2, :pswitch_data_0

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bb;->st:Lcom/android/settings/aa;

    invoke-virtual {v0}, Lcom/android/settings/aa;->finish()V

    .line 297
    return-void

    .line 288
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
