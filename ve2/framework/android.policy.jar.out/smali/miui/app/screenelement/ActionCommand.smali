.class public abstract Lmiui/app/screenelement/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ActionCommand$1;,
        Lmiui/app/screenelement/ActionCommand$AnimationProperty;,
        Lmiui/app/screenelement/ActionCommand$VisibilityProperty;,
        Lmiui/app/screenelement/ActionCommand$PropertyCommand;,
        Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;,
        Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;,
        Lmiui/app/screenelement/ActionCommand$WifiStateTracker;,
        Lmiui/app/screenelement/ActionCommand$StateTracker;,
        Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;,
        Lmiui/app/screenelement/ActionCommand$RingModeCommand;,
        Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;,
        Lmiui/app/screenelement/ActionCommand$NotificationReceiver;,
        Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mContext:Lmiui/app/screenelement/ScreenContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lmiui/app/screenelement/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 887
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-object p1, p0, Lmiui/app/screenelement/ActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 889
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lmiui/app/screenelement/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand;
    .locals 4
    .parameter "context"
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 861
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-object v2

    .line 864
    :cond_1
    new-instance v1, Lmiui/app/screenelement/util/Variable;

    invoke-direct {v1, p1}, Lmiui/app/screenelement/util/Variable;-><init>(Ljava/lang/String;)V

    .line 865
    .local v1, targetObj:Lmiui/app/screenelement/util/Variable;
    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 866
    invoke-static {p0, p1, p2}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->create(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    move-result-object v2

    goto :goto_0

    .line 869
    :cond_2
    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, property:Ljava/lang/String;
    const-string v3, "RingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 871
    new-instance v2, Lmiui/app/screenelement/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Lmiui/app/screenelement/ActionCommand$RingModeCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_3
    const-string v3, "Wifi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 873
    new-instance v2, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_4
    const-string v3, "Data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 875
    new-instance v2, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 876
    :cond_5
    const-string v3, "Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 877
    new-instance v2, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_6
    const-string v3, "UsbStorage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    new-instance v2, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)Lmiui/app/screenelement/ActionCommand;
    .locals 5
    .parameter "context"
    .parameter "ele"

    .prologue
    const/4 v3, 0x0

    .line 847
    if-nez p1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-object v3

    .line 849
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, tag:Ljava/lang/String;
    const-string v4, "Command"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 851
    const-string v3, "target"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, target:Ljava/lang/String;
    const-string v3, "value"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, value:Ljava/lang/String;
    invoke-static {p0, v1, v2}, Lmiui/app/screenelement/ActionCommand;->create(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v3

    goto :goto_0

    .line 854
    .end local v1           #target:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    const-string v4, "VariableCommand"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 855
    new-instance v3, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;

    invoke-direct {v3, p0, p1}, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 903
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 892
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand;->doPerform()V

    .line 893
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 894
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 909
    return-void
.end method
