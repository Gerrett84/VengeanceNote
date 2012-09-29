.class Lcom/android/settings/applications/ManageApplications$1$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nj:Lcom/android/settings/applications/ManageApplications$1;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->f(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->a(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->a(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1140
    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 1141
    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 1138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$1$1;->nj:Lcom/android/settings/applications/ManageApplications$1;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$1;->bF:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->g(Lcom/android/settings/applications/ManageApplications;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1148
    :cond_2
    return-void
.end method
