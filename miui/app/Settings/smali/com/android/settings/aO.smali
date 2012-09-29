.class Lcom/android/settings/aO;
.super Ljava/lang/Object;
.source "FrequentlyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic oS:Landroid/preference/PreferenceActivity$Header;

.field final synthetic oT:Lcom/android/settings/dt;


# direct methods
.method constructor <init>(Lcom/android/settings/dt;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/aO;->oT:Lcom/android/settings/dt;

    iput-object p2, p0, Lcom/android/settings/aO;->oS:Landroid/preference/PreferenceActivity$Header;

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
    iget-object v0, p0, Lcom/android/settings/aO;->oS:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/bP;->ao(I)I

    move-result v0

    .line 47
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/settings/aO;->oT:Lcom/android/settings/dt;

    iget-object v1, v1, Lcom/android/settings/dt;->JH:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v1}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/android/settings/bP;->an(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/provider/b;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/aO;->oT:Lcom/android/settings/dt;

    iget-object v0, v0, Lcom/android/settings/dt;->JH:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v0}, Lcom/android/settings/FrequentlyFragment;->aT()V

    .line 51
    :cond_0
    return-void
.end method
