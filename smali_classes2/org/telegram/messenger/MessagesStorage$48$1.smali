.class Lorg/telegram/messenger/MessagesStorage$48$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$48;->run()V
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
        "Lorg/telegram/tgnet/TLRPC$Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$48;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$48;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$48;

    .prologue
    .line 3137
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$48$1;->this$1:Lorg/telegram/messenger/MessagesStorage$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 3137
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$48$1;->compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I
    .registers 7
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 3140
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v2, :cond_19

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v2, :cond_19

    .line 3141
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v2, v3, :cond_11

    .line 3159
    :cond_10
    :goto_10
    return v0

    .line 3143
    :cond_11
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v0, v2, :cond_3d

    move v0, v1

    .line 3144
    goto :goto_10

    .line 3146
    :cond_19
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_2f

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_2f

    .line 3147
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v2, v3, :cond_10

    .line 3149
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v0, v2, :cond_3d

    move v0, v1

    .line 3150
    goto :goto_10

    .line 3153
    :cond_2f
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v2, v3, :cond_10

    .line 3155
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v0, v2, :cond_3d

    move v0, v1

    .line 3156
    goto :goto_10

    .line 3159
    :cond_3d
    const/4 v0, 0x0

    goto :goto_10
.end method
