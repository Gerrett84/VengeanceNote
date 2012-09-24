.class Lcom/android/settings/aG;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic oA:Lcom/android/settings/a/g;

.field final synthetic oB:Landroid/net/NetworkTemplate;

.field final synthetic oC:Lcom/android/settings/DataUsageSummary;

.field final synthetic oD:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic oz:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/a/g;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/android/settings/aG;->oD:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/aG;->oz:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/aG;->oA:Lcom/android/settings/a/g;

    iput-object p4, p0, Lcom/android/settings/aG;->oB:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/aG;->oC:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/settings/aG;->oz:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1663
    iget-object v1, p0, Lcom/android/settings/aG;->oA:Lcom/android/settings/a/g;

    iget-object v2, p0, Lcom/android/settings/aG;->oB:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;I)V

    .line 1664
    iget-object v0, p0, Lcom/android/settings/aG;->oC:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1665
    return-void
.end method
