.class Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/TrackAmazonPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSPurchasingListener"
.end annotation


# instance fields
.field private currentMarket:Ljava/lang/String;

.field private lastRequestId:Lcom/amazon/device/iap/model/RequestId;

.field orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

.field final synthetic this$0:Lcom/onesignal/TrackAmazonPurchase;


# direct methods
.method private constructor <init>(Lcom/onesignal/TrackAmazonPurchase;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->this$0:Lcom/onesignal/TrackAmazonPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/TrackAmazonPurchase;Lcom/onesignal/TrackAmazonPurchase$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/onesignal/TrackAmazonPurchase;
    .param p2, "x1"    # Lcom/onesignal/TrackAmazonPurchase$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;-><init>(Lcom/onesignal/TrackAmazonPurchase;)V

    return-void
.end method

.method private marketToCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_b4

    .line 124
    const-string v0, ""

    :goto_d
    return-object v0

    .line 104
    :sswitch_e
    const-string v1, "US"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string v1, "GB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_22
    const-string v1, "DE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2c
    const-string v1, "FR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_36
    const-string v1, "ES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_40
    const-string v1, "IT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_4a
    const-string v1, "JP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_54
    const-string v1, "CA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_5e
    const-string v1, "BR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    goto :goto_8

    :sswitch_69
    const-string v1, "AU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x9

    goto :goto_8

    .line 106
    :pswitch_74
    const-string v0, "USD"

    goto :goto_d

    .line 108
    :pswitch_77
    const-string v0, "GBP"

    goto :goto_d

    .line 113
    :pswitch_7a
    const-string v0, "EUR"

    goto :goto_d

    .line 115
    :pswitch_7d
    const-string v0, "JPY"

    goto :goto_d

    .line 117
    :pswitch_80
    const-string v0, "CDN"

    goto :goto_d

    .line 119
    :pswitch_83
    const-string v0, "BRL"

    goto :goto_d

    .line 121
    :pswitch_86
    const-string v0, "AUD"

    goto :goto_d

    .line 104
    nop

    :sswitch_data_8a
    .sparse-switch
        0x834 -> :sswitch_69
        0x850 -> :sswitch_5e
        0x85e -> :sswitch_54
        0x881 -> :sswitch_22
        0x8ae -> :sswitch_36
        0x8cc -> :sswitch_2c
        0x8db -> :sswitch_18
        0x92b -> :sswitch_40
        0x946 -> :sswitch_4a
        0xa9e -> :sswitch_e
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
        :pswitch_86
    .end packed-switch
.end method


# virtual methods
.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .registers 12
    .param p1, "response"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 129
    iget-object v7, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;

    if-eqz v7, :cond_89

    iget-object v7, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;

    invoke-virtual {v7}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 131
    :try_start_18
    sget-object v7, Lcom/onesignal/TrackAmazonPurchase$1;->$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_94

    .line 157
    :cond_27
    :goto_27
    return-void

    .line 133
    :pswitch_28
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 134
    .local v5, "purchasesToReport":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v4

    .line 135
    .local v4, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/iap/model/Product;

    .line 138
    .local v3, "product":Lcom/amazon/device/iap/model/Product;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v0, "jsonItem":Lorg/json/JSONObject;
    const-string v8, "sku"

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v8, "iso"

    iget-object v9, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->currentMarket:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->marketToCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "price":Ljava/lang/String;
    const-string v8, "^[0-9]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 144
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_75
    const-string v8, "amount"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_7d} :catch_7e

    goto :goto_39

    .line 152
    .end local v0    # "jsonItem":Lorg/json/JSONObject;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "price":Ljava/lang/String;
    .end local v3    # "product":Lcom/amazon/device/iap/model/Product;
    .end local v4    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    .end local v5    # "purchasesToReport":Lorg/json/JSONArray;
    :catch_7e
    move-exception v6

    .line 153
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27

    .line 149
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v4    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    .restart local v5    # "purchasesToReport":Lorg/json/JSONArray;
    :cond_83
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_85
    invoke-static {v5, v7, v8}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_7e

    goto :goto_27

    .line 155
    .end local v4    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    .end local v5    # "purchasesToReport":Lorg/json/JSONArray;
    :cond_89
    iget-object v7, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v7, :cond_27

    .line 156
    iget-object v7, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v7, p1}, Lcom/amazon/device/iap/PurchasingListener;->onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V

    goto :goto_27

    .line 131
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_28
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v1

    .line 164
    .local v1, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    sget-object v3, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v1, v3, :cond_28

    .line 165
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->currentMarket:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v0, "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_32

    .line 175
    .end local v0    # "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    :cond_28
    :goto_28
    iget-object v3, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v3, :cond_31

    .line 176
    iget-object v3, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v3, p1}, Lcom/amazon/device/iap/PurchasingListener;->onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V

    .line 177
    :cond_31
    return-void

    .line 171
    :catch_32
    move-exception v2

    .line 172
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V

    .line 183
    :cond_9
    return-void
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V

    .line 189
    :cond_9
    return-void
.end method
