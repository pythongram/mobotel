.class Lorg/telegram/ui/DialogsActivity$35;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->joinToCha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 2853
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonArray;)V
    .registers 11
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "resualt"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 2857
    if-eqz p1, :cond_2

    .line 2860
    :cond_2
    if-nez p1, :cond_47

    .line 2861
    if-eqz p2, :cond_47

    .line 2862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_47

    .line 2863
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 2864
    .local v1, "object":Lcom/google/gson/JsonObject;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2865
    .local v2, "rightNow":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v3, "enddate"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_44

    .line 2866
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "enddate"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    # invokes: Lorg/telegram/ui/DialogsActivity;->joinToCh(Ljava/lang/String;J)V
    invoke-static {v3, v4, v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$6000(Lorg/telegram/ui/DialogsActivity;Ljava/lang/String;J)V

    .line 2862
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2872
    .end local v0    # "i":I
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    .end local v2    # "rightNow":Ljava/util/Calendar;
    :cond_47
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 2853
    check-cast p2, Lcom/google/gson/JsonArray;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$35;->onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonArray;)V

    return-void
.end method
