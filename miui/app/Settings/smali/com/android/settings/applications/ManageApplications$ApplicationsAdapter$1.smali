.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# instance fields
.field final synthetic CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 539
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 540
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 542
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ez:Ljava/lang/CharSequence;

    .line 548
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 549
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 550
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;->CH:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->b(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hO()V

    .line 551
    return-void
.end method
