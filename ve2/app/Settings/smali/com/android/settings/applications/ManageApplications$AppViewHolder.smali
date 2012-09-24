.class Lcom/android/settings/applications/ManageApplications$AppViewHolder;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field pY:Landroid/widget/TextView;

.field pZ:Landroid/widget/ImageView;

.field qa:Landroid/widget/TextView;

.field qb:Landroid/widget/TextView;

.field qc:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/android/settings/applications/ManageApplications;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gR:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    packed-switch p2, :pswitch_data_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qa:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qa:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qa:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qa:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/applications/ManageApplications;->a(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
