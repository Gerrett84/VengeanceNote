.class Lcom/android/settings/aW;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qA:Lcom/android/settings/DataUsageSummary;

.field final synthetic qB:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic qx:Landroid/widget/NumberPicker;

.field final synthetic qy:Lcom/android/settings/a/i;

.field final synthetic qz:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/a/i;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/settings/aW;->qB:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/aW;->qx:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/aW;->qy:Lcom/android/settings/a/i;

    iput-object p4, p0, Lcom/android/settings/aW;->qz:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/aW;->qA:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/settings/aW;->qx:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1734
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1735
    iget-object v2, p0, Lcom/android/settings/aW;->qy:Lcom/android/settings/a/i;

    iget-object v3, p0, Lcom/android/settings/aW;->qz:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/android/settings/aW;->qA:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1737
    return-void
.end method
