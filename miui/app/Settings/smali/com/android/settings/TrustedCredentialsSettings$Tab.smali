.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# static fields
.field public static final enum fd:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum fe:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private static final synthetic ff:[Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0b0638

    const v5, 0x7f08014a

    const v6, 0x7f08014b

    const v7, 0x7f08014c

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->fd:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 66
    new-instance v6, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v7, "USER"

    const-string v9, "user"

    const v10, 0x7f0b0639

    const v11, 0x7f08014d

    const v12, 0x7f08014e

    const v13, 0x7f08014f

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v6, Lcom/android/settings/TrustedCredentialsSettings$Tab;->fe:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->fd:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->fe:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ff:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 81
    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 82
    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    .line 83
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 84
    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I

    .line 85
    iput-boolean p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/as;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings/as;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/android/settings/ea;->Pw:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$Tab;ZLcom/android/settings/as;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(ZLcom/android/settings/as;)V

    return-void
.end method

.method private a(ZLcom/android/settings/as;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    if-eqz p1, :cond_2

    .line 131
    invoke-static {p2}, Lcom/android/settings/as;->f(Lcom/android/settings/as;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p2}, Lcom/android/settings/as;->e(Lcom/android/settings/as;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, v0}, Lcom/android/settings/as;->a(Lcom/android/settings/as;Z)Z

    .line 136
    :goto_1
    invoke-static {p2}, Lcom/android/settings/as;->g(Lcom/android/settings/as;)Lcom/android/settings/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dw;->notifyDataSetChanged()V

    .line 141
    :goto_2
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {p2}, Lcom/android/settings/as;->g(Lcom/android/settings/as;)Lcom/android/settings/dw;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dw;->a(Lcom/android/settings/dw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_2
    invoke-static {p2}, Lcom/android/settings/as;->g(Lcom/android/settings/as;)Lcom/android/settings/dw;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dw;->b(Lcom/android/settings/dw;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 97
    sget-object v1, Lcom/android/settings/ea;->Pw:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 101
    :cond_0
    :pswitch_1
    return v0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/as;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->c(Lcom/android/settings/as;)I

    move-result v0

    return v0
.end method

.method private b(Lcom/android/settings/as;)I
    .locals 2
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/ea;->Pw:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/as;->e(Lcom/android/settings/as;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const v0, 0x7f0b063b

    .line 113
    :goto_0
    return v0

    .line 111
    :cond_0
    const v0, 0x7f0b063a

    goto :goto_0

    .line 113
    :pswitch_1
    const v0, 0x7f0b063c

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method private c(Lcom/android/settings/as;)I
    .locals 2
    .parameter

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings/ea;->Pw:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/as;->e(Lcom/android/settings/as;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const v0, 0x7f0b063d

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    const v0, 0x7f0b063e

    goto :goto_0

    .line 125
    :pswitch_1
    const v0, 0x7f0b063f

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic g(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ff:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
