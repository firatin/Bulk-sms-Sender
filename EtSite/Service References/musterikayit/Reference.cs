﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EtSite.musterikayit {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Musterikayitcevap", Namespace="http://tempuri.org/")]
    [System.SerializableAttribute()]
    public partial class Musterikayitcevap : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private int musteriidField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string mesajField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string hataField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true)]
        public int musteriid {
            get {
                return this.musteriidField;
            }
            set {
                if ((this.musteriidField.Equals(value) != true)) {
                    this.musteriidField = value;
                    this.RaisePropertyChanged("musteriid");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string mesaj {
            get {
                return this.mesajField;
            }
            set {
                if ((object.ReferenceEquals(this.mesajField, value) != true)) {
                    this.mesajField = value;
                    this.RaisePropertyChanged("mesaj");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string hata {
            get {
                return this.hataField;
            }
            set {
                if ((object.ReferenceEquals(this.hataField, value) != true)) {
                    this.hataField = value;
                    this.RaisePropertyChanged("hata");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="musterikayit.Service1Soap")]
    public interface Service1Soap {
        
        // CODEGEN: Generating message contract since element name username from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/musterikayit", ReplyAction="*")]
        EtSite.musterikayit.musterikayitResponse musterikayit(EtSite.musterikayit.musterikayitRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class musterikayitRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="musterikayit", Namespace="http://tempuri.org/", Order=0)]
        public EtSite.musterikayit.musterikayitRequestBody Body;
        
        public musterikayitRequest() {
        }
        
        public musterikayitRequest(EtSite.musterikayit.musterikayitRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class musterikayitRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string username;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string password;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string musterikodu;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string musterisifre;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string email;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=5)]
        public string sehir;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=6)]
        public string firma;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=7)]
        public string ceptel;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=8)]
        public string istelefonu;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=9)]
        public string yetkiliadsoyad;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=10)]
        public string smsgonder;
        
        public musterikayitRequestBody() {
        }
        
        public musterikayitRequestBody(string username, string password, string musterikodu, string musterisifre, string email, string sehir, string firma, string ceptel, string istelefonu, string yetkiliadsoyad, string smsgonder) {
            this.username = username;
            this.password = password;
            this.musterikodu = musterikodu;
            this.musterisifre = musterisifre;
            this.email = email;
            this.sehir = sehir;
            this.firma = firma;
            this.ceptel = ceptel;
            this.istelefonu = istelefonu;
            this.yetkiliadsoyad = yetkiliadsoyad;
            this.smsgonder = smsgonder;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class musterikayitResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="musterikayitResponse", Namespace="http://tempuri.org/", Order=0)]
        public EtSite.musterikayit.musterikayitResponseBody Body;
        
        public musterikayitResponse() {
        }
        
        public musterikayitResponse(EtSite.musterikayit.musterikayitResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class musterikayitResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public EtSite.musterikayit.Musterikayitcevap musterikayitResult;
        
        public musterikayitResponseBody() {
        }
        
        public musterikayitResponseBody(EtSite.musterikayit.Musterikayitcevap musterikayitResult) {
            this.musterikayitResult = musterikayitResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface Service1SoapChannel : EtSite.musterikayit.Service1Soap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1SoapClient : System.ServiceModel.ClientBase<EtSite.musterikayit.Service1Soap>, EtSite.musterikayit.Service1Soap {
        
        public Service1SoapClient() {
        }
        
        public Service1SoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1SoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1SoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1SoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        EtSite.musterikayit.musterikayitResponse EtSite.musterikayit.Service1Soap.musterikayit(EtSite.musterikayit.musterikayitRequest request) {
            return base.Channel.musterikayit(request);
        }
        
        public EtSite.musterikayit.Musterikayitcevap musterikayit(string username, string password, string musterikodu, string musterisifre, string email, string sehir, string firma, string ceptel, string istelefonu, string yetkiliadsoyad, string smsgonder) {
            EtSite.musterikayit.musterikayitRequest inValue = new EtSite.musterikayit.musterikayitRequest();
            inValue.Body = new EtSite.musterikayit.musterikayitRequestBody();
            inValue.Body.username = username;
            inValue.Body.password = password;
            inValue.Body.musterikodu = musterikodu;
            inValue.Body.musterisifre = musterisifre;
            inValue.Body.email = email;
            inValue.Body.sehir = sehir;
            inValue.Body.firma = firma;
            inValue.Body.ceptel = ceptel;
            inValue.Body.istelefonu = istelefonu;
            inValue.Body.yetkiliadsoyad = yetkiliadsoyad;
            inValue.Body.smsgonder = smsgonder;
            EtSite.musterikayit.musterikayitResponse retVal = ((EtSite.musterikayit.Service1Soap)(this)).musterikayit(inValue);
            return retVal.Body.musterikayitResult;
        }
    }
}
