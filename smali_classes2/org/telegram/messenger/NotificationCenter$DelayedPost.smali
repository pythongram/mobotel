.class Lorg/telegram/messenger/NotificationCenter$DelayedPost;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedPost"
.end annotation


# instance fields
.field private args:[Ljava/lang/Object;

.field private id:I

.field final synthetic this$0:Lorg/telegram/messenger/NotificationCenter;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->this$0:Lorg/telegram/messenger/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->id:I

    .line 148
    iput-object p3, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->args:[Ljava/lang/Object;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V
    .registers 5
    .param p1, "x0"    # Lorg/telegram/messenger/NotificationCenter;
    .param p2, "x1"    # I
    .param p3, "x2"    # [Ljava/lang/Object;
    .param p4, "x3"    # Lorg/telegram/messenger/NotificationCenter$1;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    .prologue
    .line 144
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->id:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->args:[Ljava/lang/Object;

    return-object v0
.end method
