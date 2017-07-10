.class final Lorg/telegram/util/PurchaseData$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "PurchaseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/util/PurchaseData;->insertPurchase(Landroid/content/Context;Ljava/util/HashMap;Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4

    .prologue
    .line 22
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/util/PurchaseData$1;->callback(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 27
    if-eqz p2, :cond_18

    .line 29
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    if-eqz v0, :cond_e

    .line 30
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onSuccess(Ljava/lang/Object;)V

    .line 35
    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    if-eqz v0, :cond_17

    .line 36
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    invoke-virtual {v0}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onFinish()V

    .line 37
    :cond_17
    return-void

    .line 31
    :cond_18
    if-eqz p2, :cond_22

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_e

    .line 32
    :cond_22
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    if-eqz v0, :cond_e

    .line 33
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onFailed(ILjava/lang/String;)V

    goto :goto_e
.end method

.method public failure(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AjaxCallback;->failure(ILjava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    if-eqz v0, :cond_c

    .line 43
    iget-object v0, p0, Lorg/telegram/util/PurchaseData$1;->val$ajaxResponse:Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onFailed(ILjava/lang/String;)V

    .line 44
    :cond_c
    return-void
.end method
