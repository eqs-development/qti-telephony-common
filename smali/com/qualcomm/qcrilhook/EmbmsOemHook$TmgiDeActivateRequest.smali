.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmgiDeActivateRequest"
.end annotation


# instance fields
.field public callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field public traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I[BB)V
    .locals 3
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "trace"    # I
    .param p3, "tmgi"    # [B
    .param p4, "callId"    # B

    .line 1800
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1801
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1802
    const/4 v0, 0x1

    invoke-static {p1, v0, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$mbyteArrayToQmiArray(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1803
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1804
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .line 1808
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .line 1813
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
    .end array-data
.end method
