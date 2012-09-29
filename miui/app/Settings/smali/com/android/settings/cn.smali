.class Lcom/android/settings/cn;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic BA:Landroid/widget/NumberPicker;

.field final synthetic CU:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

.field final synthetic qA:Lcom/android/settings/DataUsageSummary;

.field final synthetic qy:Lcom/android/settings/a/i;

.field final synthetic qz:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/a/i;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/android/settings/cn;->CU:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    iput-object p2, p0, Lcom/android/settings/cn;->BA:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/cn;->qy:Lcom/android/settings/a/i;

    iput-object p4, p0, Lcom/android/settings/cn;->qz:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/cn;->qA:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/settings/cn;->BA:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1860
    iget-object v0, p0, Lcom/android/settings/cn;->BA:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 1861
    iget-object v2, p0, Lcom/android/settings/cn;->qy:Lcom/android/settings/a/i;

    iget-object v3, p0, Lcom/android/settings/cn;->qz:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;J)V

    .line 1862
    iget-object v0, p0, Lcom/android/settings/cn;->qA:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1863
    return-void
.end method
