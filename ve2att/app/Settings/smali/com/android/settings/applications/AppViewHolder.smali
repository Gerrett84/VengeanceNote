.class public Lcom/android/settings/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field public AM:Landroid/widget/TextView;

.field public AN:Landroid/widget/ImageView;

.field public AO:Landroid/widget/TextView;

.field public AP:Landroid/widget/TextView;

.field public AQ:Landroid/widget/CheckBox;

.field public oh:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const v0, 0x7f04003f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 29
    new-instance v1, Lcom/android/settings/applications/AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/applications/AppViewHolder;-><init>()V

    .line 30
    iput-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->oh:Landroid/view/View;

    .line 31
    const v0, 0x7f0800b1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->AM:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f08004b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->AN:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0800b2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->AO:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0800b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->AP:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0800b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->AQ:Landroid/widget/CheckBox;

    .line 36
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hN:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    packed-switch p2, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->AO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->AO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->AO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->AO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
