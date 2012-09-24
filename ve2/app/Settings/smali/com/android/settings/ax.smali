.class Lcom/android/settings/ax;
.super Ljava/lang/Object;
.source "FrequentlyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nk:Landroid/preference/PreferenceActivity$Header;

.field final synthetic nl:Lcom/android/settings/db;


# direct methods
.method constructor <init>(Lcom/android/settings/db;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/ax;->nl:Lcom/android/settings/db;

    iput-object p2, p0, Lcom/android/settings/ax;->nk:Landroid/preference/PreferenceActivity$Header;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/ax;->nk:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/bE;->ad(I)I

    move-result v0

    .line 47
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/settings/ax;->nl:Lcom/android/settings/db;

    iget-object v1, v1, Lcom/android/settings/db;->Gb:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v1}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/bE;->ac(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/provider/b;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/ax;->nl:Lcom/android/settings/db;

    iget-object v0, v0, Lcom/android/settings/db;->Gb:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v0}, Lcom/android/settings/FrequentlyFragment;->aM()V

    .line 51
    :cond_0
    return-void
.end method
