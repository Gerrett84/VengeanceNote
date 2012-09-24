.class Lcom/android/settings/v;
.super Ljava/lang/Object;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic cg:Lcom/android/settings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BasePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/v;->cg:Lcom/android/settings/BasePreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/v;->cg:Lcom/android/settings/BasePreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/BasePreferenceFragment;->fF:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 85
    iget-object v1, p0, Lcom/android/settings/v;->cg:Lcom/android/settings/BasePreferenceFragment;

    invoke-static {v1, v0, p3}, Lcom/android/settings/BasePreferenceFragment;->a(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V

    .line 86
    return-void
.end method
