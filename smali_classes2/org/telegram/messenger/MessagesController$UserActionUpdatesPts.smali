.class Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
.super Lorg/telegram/tgnet/TLRPC$Updates;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserActionUpdatesPts"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Updates;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p2, "x1"    # Lorg/telegram/messenger/MessagesController$1;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;)V

    return-void
.end method