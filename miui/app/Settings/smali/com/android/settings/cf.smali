.class Lcom/android/settings/cf;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic BA:Landroid/widget/NumberPicker;

.field final synthetic BB:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

.field final synthetic qA:Lcom/android/settings/DataUsageSummary;

.field final synthetic qy:Lcom/android/settings/a/i;

.field final synthetic qz:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/a/i;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/android/settings/cf;->BB:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/android/settings/cf;->BA:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/cf;->qy:Lcom/android/settings/a/i;

    iput-object p4, p0, Lcom/android/settings/cf;->qz:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/cf;->qA:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/settings/cf;->BA:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1797
    iget-object v0, p0, Lcom/android/settings/cf;->BA:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 1798
    iget-object v2, p0, Lcom/android/settings/cf;->qy:Lcom/android/settings/a/i;

    iget-object v3, p0, Lcom/android/settings/cf;->qz:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;J)V

    .line 1799
    iget-object v0, p0, Lcom/android/settings/cf;->qA:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1800
    return-void
.end method
