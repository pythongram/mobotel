.class Lorg/telegram/messenger/MessagesStorage$8;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$pts:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 822
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$pts:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 826
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$8;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UPDATE dialogs SET pts = ? WHERE did = ?"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 827
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$pts:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 828
    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$8;->val$channelId:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 829
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 830
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 834
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_1f
    return-void

    .line 831
    :catch_20
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method
