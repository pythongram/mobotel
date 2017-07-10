.class Lorg/telegram/messenger/MessagesStorage$9;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$date:I

.field final synthetic val$pts:I

.field final synthetic val$qts:I

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIII)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 839
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$seq:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$pts:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$date:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$qts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 843
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$300(Lorg/telegram/messenger/MessagesStorage;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$seq:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$400(Lorg/telegram/messenger/MessagesStorage;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$pts:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$500(Lorg/telegram/messenger/MessagesStorage;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$date:I

    if-ne v2, v3, :cond_25

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$qts:I

    if-ne v2, v3, :cond_25

    .line 860
    :goto_24
    return-void

    .line 846
    :cond_25
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UPDATE params SET seq = ?, pts = ?, date = ?, qts = ? WHERE id = 1"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 847
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$seq:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 848
    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$pts:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 849
    const/4 v2, 0x3

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$date:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 850
    const/4 v2, 0x4

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$qts:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 851
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 852
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 853
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$seq:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$302(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 854
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$pts:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$402(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 855
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$date:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$502(Lorg/telegram/messenger/MessagesStorage;I)I

    .line 856
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$qts:I

    # setter for: Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$602(Lorg/telegram/messenger/MessagesStorage;I)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_24

    .line 857
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_6c
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_24
.end method
