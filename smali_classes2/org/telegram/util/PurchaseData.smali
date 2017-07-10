.class public Lorg/telegram/util/PurchaseData;
.super Ljava/lang/Object;
.source "PurchaseData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsertParam(Lorg/telegram/util/Purchase;)Ljava/util/HashMap;
    .registers 4
    .param p0, "purchase"    # Lorg/telegram/util/Purchase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/util/Purchase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "signature"

    invoke-virtual {p0}, Lorg/telegram/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "signed_data"

    invoke-virtual {p0}, Lorg/telegram/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public static insertPurchase(Landroid/content/Context;Ljava/util/HashMap;Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "ajaxResponse":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<Ljava/lang/String;>;"
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    const-string v1, "http://idehbegir.ir/pishroid/tellgram/payment/verify_market_in_app.php"

    const-class v2, Ljava/lang/String;

    new-instance v3, Lorg/telegram/util/PurchaseData$1;

    invoke-direct {v3, p2}, Lorg/telegram/util/PurchaseData$1;-><init>(Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 46
    return-void
.end method
