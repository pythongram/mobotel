.class Lcom/onesignal/TrackGooglePurchase;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"


# static fields
.field private static IInAppBillingServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static iapEnabled:I


# instance fields
.field private appContext:Landroid/content/Context;

.field private getPurchasesMethod:Ljava/lang/reflect/Method;

.field private getSkuDetailsMethod:Ljava/lang/reflect/Method;

.field private isWaitingForPurchasesRequest:Z

.field private mIInAppBillingService:Ljava/lang/Object;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private newAsExisting:Z

.field private prefsEditor:Landroid/content/SharedPreferences$Editor;

.field private purchaseTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/16 v0, -0x63

    sput v0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v4, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    .line 67
    iput-boolean v5, p0, Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    .line 70
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    .line 72
    iget-object v6, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    const-string v7, "GTPlayerPurchases"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 73
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;

    .line 77
    :try_start_20
    new-instance v2, Lorg/json/JSONArray;

    const-string v6, "purchaseTokens"

    const-string v7, "[]"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "jsonPurchaseTokens":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_44

    .line 79
    iget-object v6, p0, Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 80
    :cond_44
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_5d

    :goto_4a
    iput-boolean v4, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    .line 81
    iget-boolean v4, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    if-eqz v4, :cond_59

    .line 82
    const-string v4, "ExistingPurchases"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_59} :catch_5f

    .line 87
    .end local v1    # "i":I
    .end local v2    # "jsonPurchaseTokens":Lorg/json/JSONArray;
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 88
    return-void

    .restart local v1    # "i":I
    .restart local v2    # "jsonPurchaseTokens":Lorg/json/JSONArray;
    :cond_5d
    move v4, v5

    .line 80
    goto :goto_4a

    .line 83
    .end local v1    # "i":I
    .end local v2    # "jsonPurchaseTokens":Lorg/json/JSONArray;
    :catch_5f
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_59
.end method

.method static CanTrack(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 91
    sget v2, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    const/16 v3, -0x63

    if-ne v2, v3, :cond_f

    .line 92
    const-string v2, "com.android.vending.BILLING"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    .line 94
    :cond_f
    :try_start_f
    sget v2, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    if-nez v2, :cond_1b

    .line 95
    const-string v2, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1b} :catch_21

    .line 101
    :cond_1b
    sget v2, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    if-nez v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    :goto_20
    return v1

    .line 96
    :catch_21
    move-exception v0

    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    sput v1, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    goto :goto_20
.end method

.method private QueryBoughtItems()V
    .registers 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    if-eqz v0, :cond_5

    .line 186
    :goto_4
    return-void

    .line 141
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/TrackGooglePurchase$2;

    invoke-direct {v1, p0}, Lcom/onesignal/TrackGooglePurchase$2;-><init>(Lcom/onesignal/TrackGooglePurchase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method static synthetic access$002(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 52
    sput p0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    return p0
.end method

.method static synthetic access$100(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/onesignal/TrackGooglePurchase;->sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$102(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/onesignal/TrackGooglePurchase;)V
    .registers 1
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V

    return-void
.end method

.method static synthetic access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    return p1
.end method

.method static synthetic access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$502(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->getGetPurchasesMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_7
    if-ge v2, v5, :cond_1d

    aget-object v1, v4, v2

    .line 252
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 253
    .local v0, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    aget-object v6, v0, v3

    const-class v7, Landroid/os/IBinder;

    if-ne v6, v7, :cond_1a

    .line 257
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_19
    return-object v1

    .line 251
    .restart local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 257
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static getGetPurchasesMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_7
    if-ge v2, v5, :cond_32

    aget-object v1, v4, v2

    .line 262
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 263
    .local v0, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2f

    aget-object v6, v0, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2f

    const/4 v6, 0x1

    aget-object v6, v0, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_2f

    const/4 v6, 0x2

    aget-object v6, v0, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_2f

    const/4 v6, 0x3

    aget-object v6, v0, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_2f

    .line 268
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_2e
    return-object v1

    .line 261
    .restart local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 268
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_32
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method private static getGetSkuDetailsMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v4, 0x0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_7
    if-ge v3, v6, :cond_3a

    aget-object v1, v5, v3

    .line 273
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 274
    .local v0, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 276
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_37

    aget-object v7, v0, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_37

    const/4 v7, 0x1

    aget-object v7, v0, v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_37

    const/4 v7, 0x2

    aget-object v7, v0, v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_37

    const/4 v7, 0x3

    aget-object v7, v0, v7

    const-class v8, Landroid/os/Bundle;

    if-ne v7, v8, :cond_37

    const-class v7, Landroid/os/Bundle;

    if-ne v2, v7, :cond_37

    .line 282
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_36
    return-object v1

    .line 272
    .restart local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 282
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3a
    const/4 v1, 0x0

    goto :goto_36
.end method

.method private sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    if-nez v15, :cond_19

    .line 191
    sget-object v15, Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;

    invoke-static {v15}, Lcom/onesignal/TrackGooglePurchase;->getGetSkuDetailsMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 195
    :cond_19
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v7, "querySkus":Landroid/os/Bundle;
    const-string v15, "ITEM_ID_LIST"

    move-object/from16 v0, p1

    invoke-virtual {v7, v15, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "inapp"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    aput-object v7, v17, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 199
    .local v12, "skuDetails":Landroid/os/Bundle;
    const-string v15, "RESPONSE_CODE"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 200
    .local v8, "response":I
    if-nez v8, :cond_e4

    .line 201
    const-string v15, "DETAILS_LIST"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 202
    .local v9, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v2, "currentSkus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_76
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 205
    .local v14, "thisResponse":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "object":Lorg/json/JSONObject;
    const-string v16, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, "sku":Ljava/lang/String;
    new-instance v5, Ljava/math/BigDecimal;

    const-string v16, "price_amount_micros"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 208
    .local v5, "price":Ljava/math/BigDecimal;
    new-instance v16, Ljava/math/BigDecimal;

    const v17, 0xf4240

    invoke-direct/range {v16 .. v17}, Ljava/math/BigDecimal;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 210
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v3, "jsonItem":Lorg/json/JSONObject;
    const-string v16, "sku"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v16, "iso"

    const-string v17, "price_currency_code"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v16, "amount"

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d9} :catch_da

    goto :goto_76

    .line 245
    .end local v2    # "currentSkus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v3    # "jsonItem":Lorg/json/JSONObject;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "price":Ljava/math/BigDecimal;
    .end local v7    # "querySkus":Landroid/os/Bundle;
    .end local v8    # "response":I
    .end local v9    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "sku":Ljava/lang/String;
    .end local v12    # "skuDetails":Landroid/os/Bundle;
    .end local v14    # "thisResponse":Ljava/lang/String;
    :catch_da
    move-exception v13

    .line 246
    .local v13, "t":Ljava/lang/Throwable;
    sget-object v15, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v16, "Failed to track IAP purchases"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_e4
    :goto_e4
    return-void

    .line 217
    .restart local v2    # "currentSkus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .restart local v7    # "querySkus":Landroid/os/Bundle;
    .restart local v8    # "response":I
    .restart local v9    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "skuDetails":Landroid/os/Bundle;
    :cond_e5
    :try_start_e5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v6, "purchasesToReport":Lorg/json/JSONArray;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_ee
    :goto_ee
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 219
    .restart local v11    # "sku":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ee

    .line 221
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_ee

    .line 225
    .end local v11    # "sku":Ljava/lang/String;
    :cond_10a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_e4

    .line 226
    new-instance v10, Lcom/onesignal/TrackGooglePurchase$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/onesignal/TrackGooglePurchase$3;-><init>(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;)V

    .line 242
    .local v10, "restResponseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    invoke-static {v6, v15, v10}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_120} :catch_da

    goto :goto_e4
.end method


# virtual methods
.method trackIAP()V
    .registers 5

    .prologue
    .line 105
    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    if-nez v1, :cond_20

    .line 106
    new-instance v1, Lcom/onesignal/TrackGooglePurchase$1;

    invoke-direct {v1, p0}, Lcom/onesignal/TrackGooglePurchase$1;-><init>(Lcom/onesignal/TrackGooglePurchase;)V

    iput-object v1, p0, Lcom/onesignal/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 135
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_1f
    :goto_1f
    return-void

    .line 133
    :cond_20
    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 134
    invoke-direct {p0}, Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V

    goto :goto_1f
.end method
