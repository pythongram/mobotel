.class Lorg/telegram/messenger/MessagesController$89;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$Updates;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 5124
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$89;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 5124
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$89;->compare(Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$Updates;)I
    .registers 5
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "updates2"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 5127
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v0

    return v0
.end method
